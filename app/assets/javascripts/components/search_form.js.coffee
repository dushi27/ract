@SearchForm = React.createClass
  getInitialState: ->
    query: ''

  handleSearch: (e) ->
    e.preventDefault()
    alert(@state.query)
        
  handleChange: (e) ->
    name = e.target.name
    @setState "#{ name }": e.target.value
    query = @state.query
    if query.length > 0 
      #ele = document.getElementById('query')
      $('#query').autocomplete source: '/search_suggestions
     
      
    
  valid: ->
    @state.query
    
  render: ->
    React.DOM.form
      className: 'form-inline'
      onSubmit: @handleSearch
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          id: 'query'
          placeholder: 'Query'
          name: 'query'
          value: @state.query
          onChange: @handleChange
        React.DOM.button
          type: 'submit'
          className: 'btn btn-primary'
          disabled: !@valid()
          'Search'
        
    